.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
sub ecx, 99
and rax, 363226538
movsx cx, al
add esi, 13
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 92
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], -12
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
or dl, dl
movzx ax, dil
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
imul si, di, 100
sbb rdi, 110
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
