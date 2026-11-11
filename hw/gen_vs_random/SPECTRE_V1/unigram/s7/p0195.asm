.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 100
cmp dil, dl
mov dl, dil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
add al, -14 # instrumentation
lea dx, qword ptr [rcx + rbx]
and al, 33
cmovnz dx, di
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
lea ax, qword ptr [rsi + rax + 16]
xor edi, edx
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 57
cmovnb rsi, rbx
add al, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
cmovno ax, si
xor dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
