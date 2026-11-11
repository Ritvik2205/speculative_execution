.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
test rsi, 87
cmovnle esi, eax
test sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 11
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
bt ebx, 5
xor si, di
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and dl, 37 # instrumentation
cmovnbe di, si
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and dl, cl
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
or ax, -20176
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
