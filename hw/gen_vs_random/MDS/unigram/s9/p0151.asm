.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -102
cmovnb si, ax
cmovo rcx, rcx
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 95
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
xor sil, bl
xor bl, -61
or cl, 119
or rax, -1561934807
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
xor bl, -61
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 11
and sil, -18 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
cmovle ax, dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
