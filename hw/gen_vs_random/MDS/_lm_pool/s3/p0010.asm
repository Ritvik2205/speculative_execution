.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rcx, rcx
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
and cl, -111
test sil, dl
and bl, 68
add al, dl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor bl, -27
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
or al, al
and al, cl
or bl, 100
xor ax, -4010
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 3
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor al, dil
or bl, -54
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
