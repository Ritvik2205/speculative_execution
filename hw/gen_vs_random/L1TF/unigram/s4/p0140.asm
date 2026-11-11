.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rax, rbx, 27
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 46
btc bx, ax
and rcx, rax
and rdx, 58
xor dil, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
test eax, 1730342416
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
not rbx
or ax, 31571
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
