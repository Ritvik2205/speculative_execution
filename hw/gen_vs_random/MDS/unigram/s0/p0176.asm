.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 67
test al, 74
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
xor al, -15
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 6
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 36
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 52
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
cmovl edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and bl, -104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
cmovle edi, eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and bl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and ecx, 2
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
