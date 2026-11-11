.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rcx]
add dl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -170871715
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
neg esi
cmp esi, ecx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 95
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
test al, 42
setbe dil
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
xchg al, cl
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
