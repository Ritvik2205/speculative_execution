.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rax]
bt eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
sub ebx, 46
neg rcx
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 66
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdi + rdx + 24]
sub sil, cl
movzx rsi, dl
add al, 65 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
not ebx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmovl dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
