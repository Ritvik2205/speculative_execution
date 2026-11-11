.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
lea rbx, qword ptr [rax + rdx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 56
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
cmp al, al
not rax
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
bts cx, 176
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
inc bl
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
or dl, dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
add rdx, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
