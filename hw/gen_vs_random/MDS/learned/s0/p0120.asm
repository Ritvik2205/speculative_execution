.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 100
or al, cl
and cl, -109 # instrumentation
not rdx
or bl, al
cmovs eax, esi
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 48
xor ax, 24729
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and si, dx
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 65
or dl, cl
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
or rax, -2043376621
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
