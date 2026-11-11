.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, 22
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
dec al
lea si, qword ptr [rbx]
and al, al
test dil, 89
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or rdx, -98
xor edx, 101
btr rdx, 161
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 26
lea di, qword ptr [rcx + rsi + 13]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
xor bl, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
