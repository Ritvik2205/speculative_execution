.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 45
imul rsi, rdi
setz bl
lea di, qword ptr [rdi + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], esi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 27
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
add sil, -51 # instrumentation
cmovno rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -93 # instrumentation
setnb dl
or dl, sil
cmovno di, bx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
