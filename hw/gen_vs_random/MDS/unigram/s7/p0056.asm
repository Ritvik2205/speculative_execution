.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 8
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 41
and sil, -56
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
or cl, -36
and dl, 120 # instrumentation
cmovnz edx, esi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and ecx, -104
xor si, 80
cmovnz eax, edi
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and si, di
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
bt edx, 68
bt di, 52
cmovnbe cx, di
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 89
test eax, 298249463
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
