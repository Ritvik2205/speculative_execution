.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe dil
bts rbx, 42
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
lea ecx, qword ptr [rcx + rbx]
sub dl, al
cmp al, dil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
mul sil
imul rdx
lea dx, qword ptr [rsi + rdx + 71]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
mul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
