.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
setns al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
lea si, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, -109
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
add dl, dl
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
setp bl
imul bl
adc rsi, rcx
xchg esi, edi
setp dl
test edi, esi
jmp .bb_0.1
.bb_0.1:
add al, -40 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
movsx ax, cl
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
add eax, 109
lea si, qword ptr [rbx + rsi + 54]
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
