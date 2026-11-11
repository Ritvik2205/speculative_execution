.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
cmovz cx, cx
cmovle esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
cmovno rcx, rcx
jmp .bb_0.1
.bb_0.1:
cmovnb rax, rsi
and bl, 15 # instrumentation
cmovb di, si
cmovno rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
cmovbe ax, si
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or al, 37
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
