.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 47
test eax, 1939511779
lea ecx, qword ptr [rcx]
bt rdx, rbx
and dil, 59
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 91
add al, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
add dl, 43 # instrumentation
lea rbx, qword ptr [rcx + rdi]
xor al, al
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
add dl, 43 # instrumentation
lea rcx, qword ptr [rsi + rdi]
setnbe bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
