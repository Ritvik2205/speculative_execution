.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx, di, 103
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 94
adc al, dl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
or rcx, 72
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
not edx
lea ecx, qword ptr [rax + rax + 13]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
