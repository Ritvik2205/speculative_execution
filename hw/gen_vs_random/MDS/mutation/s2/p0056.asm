.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
xor al, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or eax, 678817098
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and dl, 47 # instrumentation
cmovnp edx, edi
jmp .bb_0.1
.bb_0.1:
xor dl, al
or si, si
and bl, 20 # instrumentation
cmovo esi, edx
cmovb edx, eax
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
or eax, -900576213
xor di, -83
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
xor al, cl
bts ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
