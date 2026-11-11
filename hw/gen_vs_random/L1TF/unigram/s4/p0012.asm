.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
btc rbx, 64
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
or cl, -78
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 75
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
adc dil, 120
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rbx]
add al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
