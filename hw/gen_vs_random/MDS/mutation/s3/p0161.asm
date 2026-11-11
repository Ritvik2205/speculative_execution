.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
cmovle esi, edx
cmovno rcx, rcx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovz cx, cx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 48
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and bl, 15 # instrumentation
cmovb di, si
cmovbe ax, si
or al, -78
cmovnb rax, rsi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovno rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
