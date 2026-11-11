.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, rax
lea edi, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mov ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
btc esi, 85
xor dil, -37
test sil, 13
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 22
or edi, 13
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
setb dl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
