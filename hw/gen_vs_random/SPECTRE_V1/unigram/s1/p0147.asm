.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], dil
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
or di, -85
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rcx + rdx]
add sil, -68
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rcx
add di, ax
setno cl
cmp di, 79
mov dl, 2
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
test al, dil
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
imul rax, rbx, 100
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
