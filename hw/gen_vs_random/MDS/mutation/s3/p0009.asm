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
or eax, 359647041
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
or eax, -900576213
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
test ebx, edi
cmovns rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
