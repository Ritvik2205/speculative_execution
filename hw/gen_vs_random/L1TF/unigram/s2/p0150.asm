.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -1
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
lea eax, qword ptr [rcx + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
test rdi, 19
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
and al, -68
btc dx, di
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 25
bts esi, 83
and rdx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdx]
test sil, sil
add al, 36 # instrumentation
lea ecx, qword ptr [rcx + rax + 17]
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
