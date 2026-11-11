.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edi
bt rcx, rcx
btc ax, 32
test di, dx
and ax, 19740
cmovz bx, cx
and rcx, -63
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
cmovno rsi, rdi
xor edx, edx
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and bl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
bt ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xor bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
