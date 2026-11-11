.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 54
adc rsi, 61
add dl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 23
or al, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor rdx, 87
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 82
add dl, 35 # instrumentation
cmovnz rax, rsi
add cl, -29 # instrumentation
lea rax, qword ptr [rcx + rcx + 56]
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
xor sil, 1
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
