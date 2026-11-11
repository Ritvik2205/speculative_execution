.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 47 # instrumentation
cmovnp edx, edi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
xor al, bl
and dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or eax, -900576213
jmp .bb_0.1
.bb_0.1:
bts ax, di
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
and bl, 20 # instrumentation
cmovo esi, edx
or si, si
or eax, -900576213
cmovb edx, eax
xor dl, al
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
xor di, 40
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
