.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
xor cx, 113
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
adc bl, bl
add bl, -54 # instrumentation
setz bl
inc dil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
cmovb rbx, rax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
bts cx, 176
test edi, edi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
or rcx, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
