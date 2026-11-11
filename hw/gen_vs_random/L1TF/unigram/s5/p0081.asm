.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
and cl, 54
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
sub esi, 17
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
sbb cl, al
btc esi, esi
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
setnle dl
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
and dil, -22
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
xor edx, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
