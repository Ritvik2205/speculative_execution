.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and dl, 47 # instrumentation
cmovnp edx, edi
or eax, -900576213
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
cmovb edx, eax
xor al, cl
xor dl, al
xor di, -83
or si, si
bts ax, di
and bl, 20 # instrumentation
cmovo esi, edx
or eax, -1777347252
jmp .bb_0.2
.bb_0.2:
and dx, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or cl, 30
cmovnbe ecx, edx
xor ecx, ecx
cmovl rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and al, -38 # instrumentation
cmovnb si, si
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
cmovnz rbx, rsi
cmovnz ebx, ecx
and al, 14
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
test cl, dl
test rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
or rdx, -109
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
