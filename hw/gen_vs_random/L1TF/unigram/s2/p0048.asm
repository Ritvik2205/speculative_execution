.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
mov rbx, 61
not dil
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
adc dl, dl
lea ax, qword ptr [rdx]
add bl, dil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
btc dx, 1
add di, 82
lea ebx, qword ptr [rcx + rdi + 58]
xor sil, sil
movzx edx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
