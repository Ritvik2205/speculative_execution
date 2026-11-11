.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
test di, si
or al, -48
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
cmovb dx, bx
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
bt ax, 205
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
nop
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
add al, -113 # instrumentation
mov rdi, -9188947962549951402
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
