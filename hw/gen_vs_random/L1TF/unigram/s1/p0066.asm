.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
imul dx, si, 95
dec di
cmp al, dl
lea rsi, qword ptr [rcx + rsi + 21]
btr eax, ebx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 92
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
add dl, 37 # instrumentation
cmovbe dx, di
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
