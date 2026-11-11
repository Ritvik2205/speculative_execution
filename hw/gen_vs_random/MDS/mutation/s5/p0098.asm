.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
cmovnle esi, eax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
or rax, -1523798580
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
bt cx, bx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
cmovl rsi, rsi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
