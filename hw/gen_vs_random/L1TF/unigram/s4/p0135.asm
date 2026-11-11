.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and sil, 110
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], esi
cmovno dx, dx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 94
and bl, 125
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
setnl sil
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
movzx rax, sil
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
mov bl, bl
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
