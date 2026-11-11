.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 12
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
imul cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 4
mov rdi, -5671708760962025403
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
lea eax, qword ptr [rdx + rbx + 90]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
add bl, 76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 16
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
lea cx, qword ptr [rbx]
xchg bl, cl
cmovle dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
