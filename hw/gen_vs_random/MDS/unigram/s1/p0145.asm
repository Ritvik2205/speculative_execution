.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
bt eax, ebx
and al, cl
xor esi, 64
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
xor bl, -88
or sil, -49
and ax, -12519
jmp .bb_0.1
.bb_0.1:
bt rax, 97
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
or dil, al
cmovnp dx, di
cmovo rax, rax
cmovbe ebx, eax
or sil, -78
and cl, dl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
