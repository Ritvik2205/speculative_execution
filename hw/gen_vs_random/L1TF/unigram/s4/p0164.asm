.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add al, -3 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
xor cl, sil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
sbb sil, dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 61
lea bx, qword ptr [rdi + rdx + 99]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
xor ax, -27503
test eax, 1939511779
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
