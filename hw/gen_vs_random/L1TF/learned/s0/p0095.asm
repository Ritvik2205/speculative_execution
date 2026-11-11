.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
imul di, si
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], cx
lea edx, qword ptr [rbx + rdi + 8]
mov rsi, 92
and bl, dl
add rcx, rdi
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
not edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
