.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
or bl, al
not cl
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
cmovnle eax, esi
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
cmovb rax, rcx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
not dl
jmp .bb_0.1
.bb_0.1:
setnbe dil
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 39
cmovb edx, ebx
test al, -5
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 14
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 79
and rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
