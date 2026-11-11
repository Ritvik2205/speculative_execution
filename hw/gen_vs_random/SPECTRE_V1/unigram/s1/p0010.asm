.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 18
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
lea rcx, qword ptr [rax + rax + 91]
lea bx, qword ptr [rdx + rbx + 55]
bts si, bx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setnp al
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
lea rcx, qword ptr [rsi + rsi + 14]
test eax, 133988823
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
cmp dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
