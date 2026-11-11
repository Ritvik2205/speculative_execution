.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
btr rbx, 93
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
btc bx, ax
and bl, -28 # instrumentation
cmovl rdi, rdx
and rbx, rsi
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
and cl, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
or edi, eax
and dl, bl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and dl, dl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
or al, -75
cmovl rbx, rdx
btc ecx, ebx
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
btr si, 52
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and al, -8
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
