.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
and dl, 8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
xor sil, 27
and cx, -8
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
or sil, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 79
and al, -34 # instrumentation
cmovs rsi, rax
cmovle cx, ax
or dl, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
