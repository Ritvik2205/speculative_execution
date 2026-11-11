.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
setns al
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
add al, sil
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
cmovno si, si
test bl, -8
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 89
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
