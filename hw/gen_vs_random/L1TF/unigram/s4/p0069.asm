.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, eax
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
neg dl
adc al, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
cmovnz eax, edi
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
setle dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
add dil, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
