.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
xor al, bl
and dl, 47 # instrumentation
cmovnp edx, edi
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
or eax, -1777347252
jmp .bb_0.1
.bb_0.1:
cmovb edx, eax
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
bts ax, di
and bl, 20 # instrumentation
cmovo esi, edx
xor al, cl
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
or eax, -1777347252
xor di, -83
xor dl, al
or si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
