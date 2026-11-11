.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovle esi, edx
cmovz cx, cx
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovno rcx, rcx
jmp .bb_0.1
.bb_0.1:
or al, -78
cmovnb rax, rsi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and bl, 15 # instrumentation
cmovb di, si
cmovno rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovbe ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
