.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
cmovs di, di
cmovl edx, esi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and sil, dil
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and al, -72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
or dil, 16
or dl, dil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
