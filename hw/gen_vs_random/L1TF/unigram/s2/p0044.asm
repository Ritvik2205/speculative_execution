.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx], 81
cmovnb esi, ebx
xor sil, sil
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 125
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
add sil, -121 # instrumentation
movsx cx, sil
xor dil, dl
movsx rdx, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add sil, -61
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
