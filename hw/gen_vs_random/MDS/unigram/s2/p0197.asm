.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, 32
or al, bl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 89
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and al, 33 # instrumentation
cmovnle edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
and dl, dl
and al, -115 # instrumentation
cmovl cx, ax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 62
cmovnle rax, rsi
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
bt edi, 254
xor dil, 90
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
xor dl, dl
and dil, sil
btc eax, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
