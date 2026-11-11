.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
cmovnbe rax, rax
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
btc bx, dx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
xor di, 40
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
btc di, 164
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
