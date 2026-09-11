.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2 
bt ecx, edx 
and dl, -72 # instrumentation
not bl 
cmovnb rax, rsi 
cmovp ebx, esi 
cmovo edx, ecx 
jmp .bb_0.1 
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx] 
or dl, sil 
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax] 
xor al, bl 
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx 
btr si, 208 
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx] 
and al, 87 
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi] 
or bl, al 
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax] 
cmovnbe rbx, rdx 
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
