.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 43
mov sil, cl
dec dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
inc rax
test cx, -17886
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
add al, 19 # instrumentation
setnz al
add al, -29 # instrumentation
add al, -70 # instrumentation
setnp al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
add bl, -23 # instrumentation
setnle bl
lea di, qword ptr [rsi + rsi + 71]
movsx rax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
