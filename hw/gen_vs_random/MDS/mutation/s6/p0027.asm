.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 47 # instrumentation
cmovnp edx, edi
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
or eax, 359647041
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or si, si
or eax, -1777347252
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
bts ax, di
xor dl, al
and bl, 20 # instrumentation
cmovo esi, edx
xor al, cl
xor di, -83
cmovb edx, eax
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
