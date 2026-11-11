.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, rcx
add cl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 38
setns al
add bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
lea rsi, qword ptr [rdx + rbx + 72]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -126 # instrumentation
cwd
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
lea rcx, qword ptr [rdx + rdi + 30]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
