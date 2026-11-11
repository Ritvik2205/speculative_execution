.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
cmovno rcx, rcx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
cmovz cx, cx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovle esi, edx
jmp .bb_0.1
.bb_0.1:
or al, -61
cmovnb rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
cmovbe ax, si
cmovno rsi, rdx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and bl, 15 # instrumentation
cmovb di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
