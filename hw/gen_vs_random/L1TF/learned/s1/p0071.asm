.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
lea rbx, qword ptr [rdx + rsi + 69]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor al, -127
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
cmp al, dil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
setz al
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 77
setle dil
cwd
jmp .bb_0.4
.bb_0.4:
lea esi, qword ptr [rdx + rbx + 58]
lea ax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
