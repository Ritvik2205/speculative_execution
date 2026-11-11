.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
or dil, -113
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
add dl, -71 # instrumentation
adc edx, edx
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and si, cx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], si
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
cmovbe rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
