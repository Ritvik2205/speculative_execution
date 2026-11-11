.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, 80
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
adc al, al
sub rdx, rax
setnle cl
cmp bl, 123
add al, -37 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
setnle sil
jmp .bb_0.1
.bb_0.1:
xchg esi, edi
setp al
movsx ax, sil
lea rdi, qword ptr [rdx + rcx]
lea ecx, qword ptr [rbx + rbx + 2102]
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
