.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -99 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or rax, 302048971
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
bt cx, bx
and al, -14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
cmovno rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
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
or al, 24
cmovl rbx, rdx
btc ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
