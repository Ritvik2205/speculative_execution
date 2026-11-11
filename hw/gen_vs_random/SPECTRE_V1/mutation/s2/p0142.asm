.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -108 # instrumentation
sbb dl, 77
sbb dl, dl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
add dl, 20 # instrumentation
cmovnbe rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, edx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
movsx ebx, bl
lea ecx, qword ptr [rdi + rsi + 7976]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
